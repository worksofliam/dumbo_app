**free

ctl-opt dftactgrp(*no);

dcl-pi P51;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P31.rpgleinc'
/copy 'qrpgleref/P7.rpgleinc'
/copy 'qrpgleref/P13.rpgleinc'

dcl-ds T406 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T406 FROM T406 LIMIT 1;

theCharVar = 'Hello from P51';
dsply theCharVar;
P31();
P7();
P13();
return;