**free

ctl-opt dftactgrp(*no);

dcl-pi P825;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P280.rpgleinc'
/copy 'qrpgleref/P111.rpgleinc'
/copy 'qrpgleref/P506.rpgleinc'

dcl-ds T734 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T734 FROM T734 LIMIT 1;

theCharVar = 'Hello from P825';
dsply theCharVar;
P280();
P111();
P506();
return;