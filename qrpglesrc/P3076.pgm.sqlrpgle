**free

ctl-opt dftactgrp(*no);

dcl-pi P3076;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P540.rpgleinc'
/copy 'qrpgleref/P955.rpgleinc'
/copy 'qrpgleref/P260.rpgleinc'

dcl-ds T409 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T409 FROM T409 LIMIT 1;

theCharVar = 'Hello from P3076';
dsply theCharVar;
P540();
P955();
P260();
return;