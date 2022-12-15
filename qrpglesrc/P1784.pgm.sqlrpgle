**free

ctl-opt dftactgrp(*no);

dcl-pi P1784;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P539.rpgleinc'
/copy 'qrpgleref/P1296.rpgleinc'
/copy 'qrpgleref/P311.rpgleinc'

dcl-ds T263 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T263 FROM T263 LIMIT 1;

theCharVar = 'Hello from P1784';
dsply theCharVar;
P539();
P1296();
P311();
return;