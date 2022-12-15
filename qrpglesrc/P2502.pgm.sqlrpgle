**free

ctl-opt dftactgrp(*no);

dcl-pi P2502;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P503.rpgleinc'
/copy 'qrpgleref/P1710.rpgleinc'
/copy 'qrpgleref/P1091.rpgleinc'

dcl-ds T963 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T963 FROM T963 LIMIT 1;

theCharVar = 'Hello from P2502';
dsply theCharVar;
P503();
P1710();
P1091();
return;