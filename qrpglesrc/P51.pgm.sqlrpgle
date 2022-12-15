**free

ctl-opt dftactgrp(*no);

dcl-pi P51;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P20.rpgleinc'
/copy 'qrpgleref/P3.rpgleinc'
/copy 'qrpgleref/P28.rpgleinc'

dcl-ds T28 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T28 FROM T28 LIMIT 1;

theCharVar = 'Hello from P51';
dsply theCharVar;
P20();
P3();
P28();
return;