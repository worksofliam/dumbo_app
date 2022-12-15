**free

ctl-opt dftactgrp(*no);

dcl-pi P5246;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P912.rpgleinc'
/copy 'qrpgleref/P876.rpgleinc'
/copy 'qrpgleref/P842.rpgleinc'

dcl-ds T72 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T72 FROM T72 LIMIT 1;

theCharVar = 'Hello from P5246';
dsply theCharVar;
callp localProc();
P912();
P876();
P842();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5246 in the procedure';
end-proc;