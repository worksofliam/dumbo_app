**free

ctl-opt dftactgrp(*no);

dcl-pi P280;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P215.rpgleinc'
/copy 'qrpgleref/P278.rpgleinc'
/copy 'qrpgleref/P2.rpgleinc'

dcl-ds theTable extname('T322') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T322 LIMIT 1;

theCharVar = 'Hello from P280';
dsply theCharVar;
P215();
P278();
P2();
return;