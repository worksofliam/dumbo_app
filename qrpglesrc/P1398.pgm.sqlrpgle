**free

ctl-opt dftactgrp(*no);

dcl-pi P1398;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P469.rpgleinc'
/copy 'qrpgleref/P1047.rpgleinc'
/copy 'qrpgleref/P1279.rpgleinc'

dcl-ds T347 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T347 FROM T347 LIMIT 1;

theCharVar = 'Hello from P1398';
dsply theCharVar;
P469();
P1047();
P1279();
return;