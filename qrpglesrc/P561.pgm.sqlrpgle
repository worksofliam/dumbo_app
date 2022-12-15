**free

ctl-opt dftactgrp(*no);

dcl-pi P561;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P372.rpgleinc'
/copy 'qrpgleref/P182.rpgleinc'
/copy 'qrpgleref/P93.rpgleinc'

dcl-ds T1701 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1701 FROM T1701 LIMIT 1;

theCharVar = 'Hello from P561';
dsply theCharVar;
P372();
P182();
P93();
return;