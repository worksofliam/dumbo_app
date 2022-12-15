**free

ctl-opt dftactgrp(*no);

dcl-pi P1056;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P827.rpgleinc'
/copy 'qrpgleref/P523.rpgleinc'
/copy 'qrpgleref/P128.rpgleinc'

dcl-ds theTable extname('T475') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T475 LIMIT 1;

theCharVar = 'Hello from P1056';
dsply theCharVar;
P827();
P523();
P128();
return;