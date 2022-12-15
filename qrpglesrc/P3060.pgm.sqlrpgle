**free

ctl-opt dftactgrp(*no);

dcl-pi P3060;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2013.rpgleinc'
/copy 'qrpgleref/P2941.rpgleinc'
/copy 'qrpgleref/P1355.rpgleinc'

dcl-ds theTable extname('T799') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T799 LIMIT 1;

theCharVar = 'Hello from P3060';
dsply theCharVar;
P2013();
P2941();
P1355();
return;