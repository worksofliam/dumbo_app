**free

ctl-opt dftactgrp(*no);

dcl-pi P4901;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4597.rpgleinc'
/copy 'qrpgleref/P2866.rpgleinc'
/copy 'qrpgleref/P4509.rpgleinc'

dcl-ds T1801 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1801 FROM T1801 LIMIT 1;

theCharVar = 'Hello from P4901';
dsply theCharVar;
P4597();
P2866();
P4509();
return;