**free

ctl-opt dftactgrp(*no);

dcl-pi P108;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P14.rpgleinc'
/copy 'qrpgleref/P26.rpgleinc'
/copy 'qrpgleref/P6.rpgleinc'

dcl-ds T104 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T104 FROM T104 LIMIT 1;

theCharVar = 'Hello from P108';
dsply theCharVar;
P14();
P26();
P6();
return;