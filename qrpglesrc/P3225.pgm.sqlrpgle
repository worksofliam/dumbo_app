**free

ctl-opt dftactgrp(*no);

dcl-pi P3225;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P631.rpgleinc'
/copy 'qrpgleref/P305.rpgleinc'
/copy 'qrpgleref/P2708.rpgleinc'

dcl-ds theTable extname('T922') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T922 LIMIT 1;

theCharVar = 'Hello from P3225';
dsply theCharVar;
callp localProc();
P631();
P305();
P2708();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3225 in the procedure';
end-proc;