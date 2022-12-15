**free

ctl-opt dftactgrp(*no);

dcl-pi P293;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P181.rpgleinc'
/copy 'qrpgleref/P35.rpgleinc'
/copy 'qrpgleref/P57.rpgleinc'

dcl-ds theTable extname('T1198') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1198 LIMIT 1;

theCharVar = 'Hello from P293';
dsply theCharVar;
callp localProc();
P181();
P35();
P57();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P293 in the procedure';
end-proc;