**free

ctl-opt dftactgrp(*no);

dcl-pi P22;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P16.rpgleinc'
/copy 'qrpgleref/P6.rpgleinc'
/copy 'qrpgleref/P7.rpgleinc'

dcl-ds T213 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T213 FROM T213 LIMIT 1;

theCharVar = 'Hello from P22';
dsply theCharVar;
P16();
P6();
P7();
return;