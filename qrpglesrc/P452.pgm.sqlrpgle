**free

ctl-opt dftactgrp(*no);

dcl-pi P452;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P142.rpgleinc'
/copy 'qrpgleref/P128.rpgleinc'
/copy 'qrpgleref/P76.rpgleinc'

dcl-ds theTable extname('T92') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T92 LIMIT 1;

theCharVar = 'Hello from P452';
dsply theCharVar;
P142();
P128();
P76();
return;