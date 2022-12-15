**free

ctl-opt dftactgrp(*no);

dcl-pi P152;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P40.rpgleinc'
/copy 'qrpgleref/P73.rpgleinc'
/copy 'qrpgleref/P3.rpgleinc'

dcl-ds T358 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T358 FROM T358 LIMIT 1;

theCharVar = 'Hello from P152';
dsply theCharVar;
P40();
P73();
P3();
return;