**free

ctl-opt dftactgrp(*no);

dcl-pi P546;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P384.rpgleinc'
/copy 'qrpgleref/P91.rpgleinc'
/copy 'qrpgleref/P449.rpgleinc'

dcl-ds T1172 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1172 FROM T1172 LIMIT 1;

theCharVar = 'Hello from P546';
dsply theCharVar;
P384();
P91();
P449();
return;