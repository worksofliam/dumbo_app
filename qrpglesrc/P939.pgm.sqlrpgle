**free

ctl-opt dftactgrp(*no);

dcl-pi P939;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P769.rpgleinc'
/copy 'qrpgleref/P658.rpgleinc'
/copy 'qrpgleref/P155.rpgleinc'

dcl-ds theTable extname('T408') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T408 LIMIT 1;

theCharVar = 'Hello from P939';
dsply theCharVar;
callp localProc();
P769();
P658();
P155();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P939 in the procedure';
end-proc;