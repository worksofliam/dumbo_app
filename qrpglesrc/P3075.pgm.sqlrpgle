**free

ctl-opt dftactgrp(*no);

dcl-pi P3075;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2442.rpgleinc'
/copy 'qrpgleref/P2660.rpgleinc'
/copy 'qrpgleref/P701.rpgleinc'

dcl-ds T517 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T517 FROM T517 LIMIT 1;

theCharVar = 'Hello from P3075';
dsply theCharVar;
P2442();
P2660();
P701();
return;