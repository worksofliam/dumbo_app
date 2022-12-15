**free

ctl-opt dftactgrp(*no);

dcl-pi P238;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1.rpgleinc'
/copy 'qrpgleref/P18.rpgleinc'
/copy 'qrpgleref/P31.rpgleinc'

dcl-ds T497 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T497 FROM T497 LIMIT 1;

theCharVar = 'Hello from P238';
dsply theCharVar;
P1();
P18();
P31();
return;