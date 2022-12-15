**free

ctl-opt dftactgrp(*no);

dcl-pi P1198;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P145.rpgleinc'
/copy 'qrpgleref/P199.rpgleinc'
/copy 'qrpgleref/P970.rpgleinc'

dcl-ds T889 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T889 FROM T889 LIMIT 1;

theCharVar = 'Hello from P1198';
dsply theCharVar;
P145();
P199();
P970();
return;