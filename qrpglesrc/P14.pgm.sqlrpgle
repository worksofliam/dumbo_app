**free

ctl-opt dftactgrp(*no);

dcl-pi P14;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P11.rpgleinc'
/copy 'qrpgleref/P10.rpgleinc'
/copy 'qrpgleref/P2.rpgleinc'

dcl-ds T370 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T370 FROM T370 LIMIT 1;

theCharVar = 'Hello from P14';
dsply theCharVar;
P11();
P10();
P2();
return;