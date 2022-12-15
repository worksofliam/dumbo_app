**free

ctl-opt dftactgrp(*no);

dcl-pi P1703;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P384.rpgleinc'
/copy 'qrpgleref/P386.rpgleinc'
/copy 'qrpgleref/P1262.rpgleinc'

dcl-ds T102 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T102 FROM T102 LIMIT 1;

theCharVar = 'Hello from P1703';
dsply theCharVar;
P384();
P386();
P1262();
return;