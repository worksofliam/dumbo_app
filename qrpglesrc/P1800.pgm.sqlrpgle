**free

ctl-opt dftactgrp(*no);

dcl-pi P1800;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P798.rpgleinc'
/copy 'qrpgleref/P1342.rpgleinc'
/copy 'qrpgleref/P1751.rpgleinc'

dcl-ds T957 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T957 FROM T957 LIMIT 1;

theCharVar = 'Hello from P1800';
dsply theCharVar;
P798();
P1342();
P1751();
return;