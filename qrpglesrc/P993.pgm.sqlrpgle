**free

ctl-opt dftactgrp(*no);

dcl-pi P993;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P169.rpgleinc'
/copy 'qrpgleref/P42.rpgleinc'
/copy 'qrpgleref/P802.rpgleinc'

dcl-ds theTable extname('T281') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T281 LIMIT 1;

theCharVar = 'Hello from P993';
dsply theCharVar;
callp localProc();
P169();
P42();
P802();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P993 in the procedure';
end-proc;