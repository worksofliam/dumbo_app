**free

ctl-opt dftactgrp(*no);

dcl-pi P905;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P639.rpgleinc'
/copy 'qrpgleref/P329.rpgleinc'
/copy 'qrpgleref/P351.rpgleinc'

dcl-ds T130 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T130 FROM T130 LIMIT 1;

theCharVar = 'Hello from P905';
dsply theCharVar;
P639();
P329();
P351();
return;