**free

ctl-opt dftactgrp(*no);

dcl-pi P5225;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3039.rpgleinc'
/copy 'qrpgleref/P2778.rpgleinc'
/copy 'qrpgleref/P955.rpgleinc'

dcl-ds T1435 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1435 FROM T1435 LIMIT 1;

theCharVar = 'Hello from P5225';
dsply theCharVar;
callp localProc();
P3039();
P2778();
P955();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5225 in the procedure';
end-proc;