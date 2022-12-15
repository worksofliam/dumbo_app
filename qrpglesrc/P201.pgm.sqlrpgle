**free

ctl-opt dftactgrp(*no);

dcl-pi P201;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P51.rpgleinc'
/copy 'qrpgleref/P3.rpgleinc'
/copy 'qrpgleref/P110.rpgleinc'

dcl-ds T225 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T225 FROM T225 LIMIT 1;

theCharVar = 'Hello from P201';
dsply theCharVar;
P51();
P3();
P110();
return;