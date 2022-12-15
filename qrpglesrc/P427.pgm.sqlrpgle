**free

ctl-opt dftactgrp(*no);

dcl-pi P427;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P404.rpgleinc'
/copy 'qrpgleref/P316.rpgleinc'
/copy 'qrpgleref/P1.rpgleinc'

dcl-ds T244 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T244 FROM T244 LIMIT 1;

theCharVar = 'Hello from P427';
dsply theCharVar;
P404();
P316();
P1();
return;