**free

ctl-opt dftactgrp(*no);

dcl-pi P4959;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1333.rpgleinc'
/copy 'qrpgleref/P1467.rpgleinc'
/copy 'qrpgleref/P524.rpgleinc'

dcl-ds T303 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T303 FROM T303 LIMIT 1;

theCharVar = 'Hello from P4959';
dsply theCharVar;
P1333();
P1467();
P524();
return;