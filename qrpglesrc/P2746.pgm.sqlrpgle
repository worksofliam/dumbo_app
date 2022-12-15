**free

ctl-opt dftactgrp(*no);

dcl-pi P2746;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2554.rpgleinc'
/copy 'qrpgleref/P2623.rpgleinc'
/copy 'qrpgleref/P401.rpgleinc'

dcl-ds theTable extname('T618') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T618 LIMIT 1;

theCharVar = 'Hello from P2746';
dsply theCharVar;
P2554();
P2623();
P401();
return;