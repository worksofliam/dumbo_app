**free

ctl-opt dftactgrp(*no);

dcl-pi P3632;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1212.rpgleinc'
/copy 'qrpgleref/P1171.rpgleinc'
/copy 'qrpgleref/P557.rpgleinc'

dcl-ds T661 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T661 FROM T661 LIMIT 1;

theCharVar = 'Hello from P3632';
dsply theCharVar;
P1212();
P1171();
P557();
return;