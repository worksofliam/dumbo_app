**free

ctl-opt dftactgrp(*no);

dcl-pi P5437;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4909.rpgleinc'
/copy 'qrpgleref/P28.rpgleinc'
/copy 'qrpgleref/P1534.rpgleinc'

dcl-ds T413 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T413 FROM T413 LIMIT 1;

theCharVar = 'Hello from P5437';
dsply theCharVar;
P4909();
P28();
P1534();
return;