**free

ctl-opt dftactgrp(*no);

dcl-pi P16;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P14.rpgleinc'
/copy 'qrpgleref/P12.rpgleinc'
/copy 'qrpgleref/P13.rpgleinc'

dcl-ds T1027 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1027 FROM T1027 LIMIT 1;

theCharVar = 'Hello from P16';
dsply theCharVar;
P14();
P12();
P13();
return;