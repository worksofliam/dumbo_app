**free

ctl-opt dftactgrp(*no);

dcl-pi P1668;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1006.rpgleinc'
/copy 'qrpgleref/P1220.rpgleinc'
/copy 'qrpgleref/P1651.rpgleinc'

dcl-ds T676 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T676 FROM T676 LIMIT 1;

theCharVar = 'Hello from P1668';
dsply theCharVar;
P1006();
P1220();
P1651();
return;