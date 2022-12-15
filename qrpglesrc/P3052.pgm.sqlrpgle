**free

ctl-opt dftactgrp(*no);

dcl-pi P3052;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P257.rpgleinc'
/copy 'qrpgleref/P416.rpgleinc'
/copy 'qrpgleref/P2721.rpgleinc'

dcl-ds theTable extname('T894') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T894 LIMIT 1;

theCharVar = 'Hello from P3052';
dsply theCharVar;
P257();
P416();
P2721();
return;