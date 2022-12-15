**free

ctl-opt dftactgrp(*no);

dcl-pi P940;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P614.rpgleinc'
/copy 'qrpgleref/P318.rpgleinc'
/copy 'qrpgleref/P418.rpgleinc'

dcl-ds theTable extname('T400') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T400 LIMIT 1;

theCharVar = 'Hello from P940';
dsply theCharVar;
callp localProc();
P614();
P318();
P418();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P940 in the procedure';
end-proc;