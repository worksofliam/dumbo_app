**free

ctl-opt dftactgrp(*no);

dcl-pi P1092;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1049.rpgleinc'
/copy 'qrpgleref/P989.rpgleinc'
/copy 'qrpgleref/P301.rpgleinc'

dcl-ds T178 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T178 FROM T178 LIMIT 1;

theCharVar = 'Hello from P1092';
dsply theCharVar;
P1049();
P989();
P301();
return;