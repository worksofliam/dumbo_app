**free

ctl-opt dftactgrp(*no);

dcl-pi P482;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P148.rpgleinc'
/copy 'qrpgleref/P15.rpgleinc'
/copy 'qrpgleref/P123.rpgleinc'

dcl-ds theTable extname('T762') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T762 LIMIT 1;

theCharVar = 'Hello from P482';
dsply theCharVar;
P148();
P15();
P123();
return;