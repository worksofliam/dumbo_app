**free

ctl-opt dftactgrp(*no);

dcl-pi P1735;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P316.rpgleinc'
/copy 'qrpgleref/P683.rpgleinc'
/copy 'qrpgleref/P584.rpgleinc'

dcl-ds T784 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T784 FROM T784 LIMIT 1;

theCharVar = 'Hello from P1735';
dsply theCharVar;
P316();
P683();
P584();
return;