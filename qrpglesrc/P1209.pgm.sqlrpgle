**free

ctl-opt dftactgrp(*no);

dcl-pi P1209;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P363.rpgleinc'
/copy 'qrpgleref/P1045.rpgleinc'
/copy 'qrpgleref/P259.rpgleinc'

dcl-ds T262 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T262 FROM T262 LIMIT 1;

theCharVar = 'Hello from P1209';
dsply theCharVar;
P363();
P1045();
P259();
return;