**free

ctl-opt dftactgrp(*no);

dcl-pi P1567;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P976.rpgleinc'
/copy 'qrpgleref/P668.rpgleinc'
/copy 'qrpgleref/P531.rpgleinc'

dcl-ds T1665 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1665 FROM T1665 LIMIT 1;

theCharVar = 'Hello from P1567';
dsply theCharVar;
callp localProc();
P976();
P668();
P531();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1567 in the procedure';
end-proc;