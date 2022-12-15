**free

ctl-opt dftactgrp(*no);

dcl-pi P87;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P20.rpgleinc'
/copy 'qrpgleref/P73.rpgleinc'
/copy 'qrpgleref/P11.rpgleinc'

dcl-ds T11 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T11 FROM T11 LIMIT 1;

theCharVar = 'Hello from P87';
dsply theCharVar;
P20();
P73();
P11();
return;