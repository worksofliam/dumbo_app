**free

ctl-opt dftactgrp(*no);

dcl-pi P2098;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1841.rpgleinc'
/copy 'qrpgleref/P2090.rpgleinc'
/copy 'qrpgleref/P436.rpgleinc'

dcl-ds theTable extname('T1637') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1637 LIMIT 1;

theCharVar = 'Hello from P2098';
dsply theCharVar;
P1841();
P2090();
P436();
return;