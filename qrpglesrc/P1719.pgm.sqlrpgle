**free

ctl-opt dftactgrp(*no);

dcl-pi P1719;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P64.rpgleinc'
/copy 'qrpgleref/P1350.rpgleinc'
/copy 'qrpgleref/P714.rpgleinc'

dcl-ds T1851 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1851 FROM T1851 LIMIT 1;

theCharVar = 'Hello from P1719';
dsply theCharVar;
P64();
P1350();
P714();
return;