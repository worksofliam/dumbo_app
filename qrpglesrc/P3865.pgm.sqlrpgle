**free

ctl-opt dftactgrp(*no);

dcl-pi P3865;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P497.rpgleinc'
/copy 'qrpgleref/P1893.rpgleinc'
/copy 'qrpgleref/P1236.rpgleinc'

dcl-ds T431 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T431 FROM T431 LIMIT 1;

theCharVar = 'Hello from P3865';
dsply theCharVar;
P497();
P1893();
P1236();
return;