**free

ctl-opt dftactgrp(*no);

dcl-pi P550;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P216.rpgleinc'
/copy 'qrpgleref/P203.rpgleinc'
/copy 'qrpgleref/P218.rpgleinc'

dcl-ds theTable extname('T1735') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1735 LIMIT 1;

theCharVar = 'Hello from P550';
dsply theCharVar;
callp localProc();
P216();
P203();
P218();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P550 in the procedure';
end-proc;