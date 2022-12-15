**free

ctl-opt dftactgrp(*no);

dcl-pi P790;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P627.rpgleinc'
/copy 'qrpgleref/P779.rpgleinc'
/copy 'qrpgleref/P327.rpgleinc'

dcl-ds theTable extname('T922') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T922 LIMIT 1;

theCharVar = 'Hello from P790';
dsply theCharVar;
P627();
P779();
P327();
return;