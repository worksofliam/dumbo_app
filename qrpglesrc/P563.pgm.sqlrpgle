**free

ctl-opt dftactgrp(*no);

dcl-pi P563;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P245.rpgleinc'
/copy 'qrpgleref/P414.rpgleinc'
/copy 'qrpgleref/P42.rpgleinc'

dcl-ds T1169 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1169 FROM T1169 LIMIT 1;

theCharVar = 'Hello from P563';
dsply theCharVar;
P245();
P414();
P42();
return;