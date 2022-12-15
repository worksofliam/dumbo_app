**free

ctl-opt dftactgrp(*no);

dcl-pi P620;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P319.rpgleinc'
/copy 'qrpgleref/P299.rpgleinc'
/copy 'qrpgleref/P91.rpgleinc'

dcl-ds theTable extname('T496') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T496 LIMIT 1;

theCharVar = 'Hello from P620';
dsply theCharVar;
callp localProc();
P319();
P299();
P91();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P620 in the procedure';
end-proc;