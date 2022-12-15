**free

ctl-opt dftactgrp(*no);

dcl-pi P50;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P48.rpgleinc'
/copy 'qrpgleref/P11.rpgleinc'
/copy 'qrpgleref/P47.rpgleinc'

dcl-ds T51 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T51 FROM T51 LIMIT 1;

theCharVar = 'Hello from P50';
dsply theCharVar;
P48();
P11();
P47();
return;