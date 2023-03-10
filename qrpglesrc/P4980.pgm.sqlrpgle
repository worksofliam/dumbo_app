**free

ctl-opt dftactgrp(*no);

dcl-pi P4980;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P797.rpgleinc'
/copy 'qrpgleref/P744.rpgleinc'
/copy 'qrpgleref/P2335.rpgleinc'

dcl-ds theTable extname('T212') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T212 LIMIT 1;

theCharVar = 'Hello from P4980';
dsply theCharVar;
callp localProc();
P797();
P744();
P2335();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4980 in the procedure';
end-proc;