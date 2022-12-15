**free

ctl-opt dftactgrp(*no);

dcl-pi P77;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P65.rpgleinc'
/copy 'qrpgleref/P39.rpgleinc'
/copy 'qrpgleref/P35.rpgleinc'

dcl-ds T292 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T292 FROM T292 LIMIT 1;

theCharVar = 'Hello from P77';
dsply theCharVar;
P65();
P39();
P35();
return;