**free

ctl-opt dftactgrp(*no);

dcl-pi P2867;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1939.rpgleinc'
/copy 'qrpgleref/P1914.rpgleinc'
/copy 'qrpgleref/P2856.rpgleinc'

dcl-ds theTable extname('T219') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T219 LIMIT 1;

theCharVar = 'Hello from P2867';
dsply theCharVar;
P1939();
P1914();
P2856();
return;