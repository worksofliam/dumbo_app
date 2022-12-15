**free

ctl-opt dftactgrp(*no);

dcl-pi P4750;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3705.rpgleinc'
/copy 'qrpgleref/P1759.rpgleinc'
/copy 'qrpgleref/P4600.rpgleinc'

dcl-ds T1354 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1354 FROM T1354 LIMIT 1;

theCharVar = 'Hello from P4750';
dsply theCharVar;
P3705();
P1759();
P4600();
return;