**free

ctl-opt dftactgrp(*no);

dcl-pi P5090;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3838.rpgleinc'
/copy 'qrpgleref/P4912.rpgleinc'
/copy 'qrpgleref/P2369.rpgleinc'

dcl-ds T368 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T368 FROM T368 LIMIT 1;

theCharVar = 'Hello from P5090';
dsply theCharVar;
callp localProc();
P3838();
P4912();
P2369();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5090 in the procedure';
end-proc;