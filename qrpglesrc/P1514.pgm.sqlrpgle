**free

ctl-opt dftactgrp(*no);

dcl-pi P1514;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1016.rpgleinc'
/copy 'qrpgleref/P798.rpgleinc'
/copy 'qrpgleref/P1224.rpgleinc'

dcl-ds T277 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T277 FROM T277 LIMIT 1;

theCharVar = 'Hello from P1514';
dsply theCharVar;
P1016();
P798();
P1224();
return;