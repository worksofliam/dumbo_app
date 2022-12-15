**free

ctl-opt dftactgrp(*no);

dcl-pi P1304;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P561.rpgleinc'
/copy 'qrpgleref/P445.rpgleinc'
/copy 'qrpgleref/P436.rpgleinc'

dcl-ds T734 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T734 FROM T734 LIMIT 1;

theCharVar = 'Hello from P1304';
dsply theCharVar;
P561();
P445();
P436();
return;